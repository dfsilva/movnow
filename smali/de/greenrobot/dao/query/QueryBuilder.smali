.class public Lde/greenrobot/dao/query/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static LOG_SQL:Z

.field public static LOG_VALUES:Z


# instance fields
.field private final dao:Lde/greenrobot/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private joinBuilder:Ljava/lang/StringBuilder;

.field private limit:Ljava/lang/Integer;

.field private offset:Ljava/lang/Integer;

.field private orderBuilder:Ljava/lang/StringBuilder;

.field private final tablePrefix:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final whereConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lde/greenrobot/dao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    const-string v0, "T"

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/query/QueryBuilder;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;)V
    .locals 1
    .param p2, "tablePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    .line 80
    iput-object p2, p0, Lde/greenrobot/dao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    .line 83
    return-void
.end method

.method private appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "tablePrefixOrNull"    # Ljava/lang/String;

    .prologue
    .line 345
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 346
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 347
    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 349
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lde/greenrobot/dao/query/WhereCondition;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const-string v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/query/WhereCondition;

    .line 354
    .local v0, "condition":Lde/greenrobot/dao/query/WhereCondition;
    invoke-interface {v0, p1, p2}, Lde/greenrobot/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v0, v2}, Lde/greenrobot/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    goto :goto_0

    .line 358
    .end local v0    # "condition":Lde/greenrobot/dao/query/WhereCondition;
    .end local v1    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lde/greenrobot/dao/query/WhereCondition;>;"
    :cond_1
    return-void
.end method

.method private checkOrderBuilder()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static internalCreate(Lde/greenrobot/dao/AbstractDao;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;)",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lde/greenrobot/dao/query/QueryBuilder;

    invoke-direct {v0, p0}, Lde/greenrobot/dao/query/QueryBuilder;-><init>(Lde/greenrobot/dao/AbstractDao;)V

    return-object v0
.end method

.method private varargs orderAscOrDesc(Ljava/lang/String;[Lde/greenrobot/dao/Property;)V
    .locals 6
    .param p1, "ascOrDescWithLeadingSpace"    # Ljava/lang/String;
    .param p2, "properties"    # [Lde/greenrobot/dao/Property;

    .prologue
    .line 189
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    move-object v0, p2

    .local v0, "arr$":[Lde/greenrobot/dao/Property;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 190
    .local v3, "property":Lde/greenrobot/dao/Property;
    invoke-direct {p0}, Lde/greenrobot/dao/query/QueryBuilder;->checkOrderBuilder()V

    .line 191
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v3}, Lde/greenrobot/dao/query/QueryBuilder;->append(Ljava/lang/StringBuilder;Lde/greenrobot/dao/Property;)Ljava/lang/StringBuilder;

    .line 192
    const-class v4, Ljava/lang/String;

    iget-object v5, v3, Lde/greenrobot/dao/Property;->type:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v5, " COLLATE LOCALIZED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "property":Lde/greenrobot/dao/Property;
    :cond_1
    return-void
.end method


# virtual methods
.method protected addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lde/greenrobot/dao/query/WhereCondition;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "condition"    # Lde/greenrobot/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p3}, Lde/greenrobot/dao/query/QueryBuilder;->checkCondition(Lde/greenrobot/dao/query/WhereCondition;)V

    .line 152
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lde/greenrobot/dao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 153
    invoke-interface {p3, p2}, Lde/greenrobot/dao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    .line 154
    return-void
.end method

.method public varargs and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 1
    .param p1, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;

    .prologue
    .line 130
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const-string v0, " AND "

    invoke-virtual {p0, v0, p1, p2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->combineWhereConditions(Ljava/lang/String;Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method protected append(Ljava/lang/StringBuilder;Lde/greenrobot/dao/Property;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const/16 v2, 0x27

    .line 218
    invoke-virtual {p0, p2}, Lde/greenrobot/dao/query/QueryBuilder;->checkProperty(Lde/greenrobot/dao/Property;)V

    .line 219
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    return-object p1
.end method

.method public build()Lde/greenrobot/dao/query/Query;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->joinBuilder:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->joinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 261
    :cond_0
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-static {v5}, Lde/greenrobot/dao/InternalQueryDaoAccess;->getStatements(Lde/greenrobot/dao/AbstractDao;)Lde/greenrobot/dao/internal/TableStatements;

    move-result-object v5

    invoke-virtual {v5}, Lde/greenrobot/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "select":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lde/greenrobot/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 270
    const-string v5, " ORDER BY "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    const/4 v1, -0x1

    .line 274
    .local v1, "limitPosition":I
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 275
    const-string v5, " LIMIT ?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 280
    :cond_2
    const/4 v2, -0x1

    .line 281
    .local v2, "offsetPosition":I
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 282
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    if-nez v5, :cond_4

    .line 283
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Offset cannot be set without limit"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 263
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "limitPosition":I
    .end local v2    # "offsetPosition":I
    .end local v3    # "select":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v5}, Lde/greenrobot/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    iget-object v7, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v7}, Lde/greenrobot/dao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "select":Ljava/lang/String;
    goto :goto_0

    .line 285
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "limitPosition":I
    .restart local v2    # "offsetPosition":I
    :cond_4
    const-string v5, " OFFSET ?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 290
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "sql":Ljava/lang/String;
    sget-boolean v5, Lde/greenrobot/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v5, :cond_6

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Built SQL for query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 295
    :cond_6
    sget-boolean v5, Lde/greenrobot/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v5, :cond_7

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Values for query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 299
    :cond_7
    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v4, v6, v1, v2}, Lde/greenrobot/dao/query/Query;->create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lde/greenrobot/dao/query/Query;

    move-result-object v5

    return-object v5
.end method

.method public buildCount()Lde/greenrobot/dao/query/CountQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/CountQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4}, Lde/greenrobot/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "tablename":Ljava/lang/String;
    invoke-static {v3}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlSelectCountStar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, v3}, Lde/greenrobot/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "sql":Ljava/lang/String;
    sget-boolean v4, Lde/greenrobot/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v4, :cond_0

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Built SQL for count query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 337
    :cond_0
    sget-boolean v4, Lde/greenrobot/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v4, :cond_1

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Values for count query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 341
    :cond_1
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lde/greenrobot/dao/query/CountQuery;->create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/CountQuery;

    move-result-object v4

    return-object v4
.end method

.method public buildDelete()Lde/greenrobot/dao/query/DeleteQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/DeleteQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v4}, Lde/greenrobot/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "tablename":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, v3}, Lde/greenrobot/dao/query/QueryBuilder;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "sql":Ljava/lang/String;
    sget-boolean v4, Lde/greenrobot/dao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v4, :cond_0

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Built SQL for delete query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 316
    :cond_0
    sget-boolean v4, Lde/greenrobot/dao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v4, :cond_1

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Values for delete query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 320
    :cond_1
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v5, p0, Lde/greenrobot/dao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lde/greenrobot/dao/query/DeleteQuery;->create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/DeleteQuery;

    move-result-object v4

    return-object v4
.end method

.method protected checkCondition(Lde/greenrobot/dao/query/WhereCondition;)V
    .locals 1
    .param p1, "whereCondition"    # Lde/greenrobot/dao/query/WhereCondition;

    .prologue
    .line 157
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    instance-of v0, p1, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;

    .end local p1    # "whereCondition":Lde/greenrobot/dao/query/WhereCondition;
    iget-object v0, p1, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->property:Lde/greenrobot/dao/Property;

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/QueryBuilder;->checkProperty(Lde/greenrobot/dao/Property;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected checkProperty(Lde/greenrobot/dao/Property;)V
    .locals 9
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 224
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    if-eqz v6, :cond_2

    .line 225
    iget-object v6, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v6}, Lde/greenrobot/dao/AbstractDao;->getProperties()[Lde/greenrobot/dao/Property;

    move-result-object v4

    .line 226
    .local v4, "properties":[Lde/greenrobot/dao/Property;
    const/4 v1, 0x0

    .line 227
    .local v1, "found":Z
    move-object v0, v4

    .local v0, "arr$":[Lde/greenrobot/dao/Property;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 228
    .local v5, "property2":Lde/greenrobot/dao/Property;
    if-ne p1, v5, :cond_1

    .line 229
    const/4 v1, 0x1

    .line 233
    .end local v5    # "property2":Lde/greenrobot/dao/Property;
    :cond_0
    if-nez v1, :cond_2

    .line 234
    new-instance v6, Lde/greenrobot/dao/DaoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Property \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lde/greenrobot/dao/Property;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not part of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lde/greenrobot/dao/query/QueryBuilder;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 227
    .restart local v5    # "property2":Lde/greenrobot/dao/Property;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "arr$":[Lde/greenrobot/dao/Property;
    .end local v1    # "found":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "properties":[Lde/greenrobot/dao/Property;
    .end local v5    # "property2":Lde/greenrobot/dao/Property;
    :cond_2
    return-void
.end method

.method protected varargs combineWhereConditions(Ljava/lang/String;Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 9
    .param p1, "combineOp"    # Ljava/lang/String;
    .param p2, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p4, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;

    .prologue
    .line 135
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, "combinedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v2, p2}, Lde/greenrobot/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lde/greenrobot/dao/query/WhereCondition;)V

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0, v1, v2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lde/greenrobot/dao/query/WhereCondition;)V

    .line 142
    move-object v0, p4

    .local v0, "arr$":[Lde/greenrobot/dao/query/WhereCondition;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 143
    .local v3, "cond":Lde/greenrobot/dao/query/WhereCondition;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0, v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lde/greenrobot/dao/query/WhereCondition;)V

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    .end local v3    # "cond":Lde/greenrobot/dao/query/WhereCondition;
    :cond_0
    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    new-instance v6, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public count()J
    .locals 2

    .prologue
    .line 420
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->buildCount()Lde/greenrobot/dao/query/CountQuery;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/CountQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public join(Ljava/lang/Class;Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p2, "toOneProperty"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TJ;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public joinToMany(Ljava/lang/Class;Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p2, "toManyProperty"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TJ;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public limit(I)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    .line 242
    return-object p0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 393
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->listIterator()Lde/greenrobot/dao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listLazy()Lde/greenrobot/dao/query/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->listLazy()Lde/greenrobot/dao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public listLazyUncached()Lde/greenrobot/dao/query/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->listLazyUncached()Lde/greenrobot/dao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public offset(I)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    .line 251
    return-object p0
.end method

.method public varargs or(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;
    .locals 1
    .param p1, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;

    .prologue
    .line 121
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const-string v0, " OR "

    invoke-virtual {p0, v0, p1, p2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->combineWhereConditions(Ljava/lang/String;Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const-string v0, " ASC"

    invoke-direct {p0, v0, p1}, Lde/greenrobot/dao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lde/greenrobot/dao/Property;)V

    .line 179
    return-object p0
.end method

.method public orderCustom(Lde/greenrobot/dao/Property;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 2
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "customOrderForProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Lde/greenrobot/dao/query/QueryBuilder;->checkOrderBuilder()V

    .line 202
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1}, Lde/greenrobot/dao/query/QueryBuilder;->append(Ljava/lang/StringBuilder;Lde/greenrobot/dao/Property;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    return-object p0
.end method

.method public varargs orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    const-string v0, " DESC"

    invoke-direct {p0, v0, p1}, Lde/greenrobot/dao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lde/greenrobot/dao/Property;)V

    .line 185
    return-object p0
.end method

.method public orderRaw(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p1, "rawOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Lde/greenrobot/dao/query/QueryBuilder;->checkOrderBuilder()V

    .line 213
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    return-object p0
.end method

.method public unique()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query;->uniqueOrThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 5
    .param p1, "cond"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/WhereCondition;",
            "[",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    move-object v0, p2

    .local v0, "arr$":[Lde/greenrobot/dao/query/WhereCondition;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 100
    .local v3, "whereCondition":Lde/greenrobot/dao/query/WhereCondition;
    invoke-virtual {p0, v3}, Lde/greenrobot/dao/query/QueryBuilder;->checkCondition(Lde/greenrobot/dao/query/WhereCondition;)V

    .line 101
    iget-object v4, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "whereCondition":Lde/greenrobot/dao/query/WhereCondition;
    :cond_0
    return-object p0
.end method

.method public varargs whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 2
    .param p1, "cond1"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p2, "cond2"    # Lde/greenrobot/dao/query/WhereCondition;
    .param p3, "condMore"    # [Lde/greenrobot/dao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/WhereCondition;",
            "Lde/greenrobot/dao/query/WhereCondition;",
            "[",
            "Lde/greenrobot/dao/query/WhereCondition;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/QueryBuilder;->whereConditions:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lde/greenrobot/dao/query/QueryBuilder;->or(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-object p0
.end method

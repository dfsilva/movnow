.class public Lde/greenrobot/dao/internal/TableStatements;
.super Ljava/lang/Object;
.source "TableStatements.java"


# instance fields
.field private final allColumns:[Ljava/lang/String;

.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private deleteStatement:Landroid/database/sqlite/SQLiteStatement;

.field private insertOrReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

.field private insertStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final pkColumns:[Ljava/lang/String;

.field private volatile selectAll:Ljava/lang/String;

.field private volatile selectByKey:Ljava/lang/String;

.field private volatile selectByRowId:Ljava/lang/String;

.field private final tablename:Ljava/lang/String;

.field private updateStatement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tablename"    # Ljava/lang/String;
    .param p3, "allColumns"    # [Ljava/lang/String;
    .param p4, "pkColumns"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lde/greenrobot/dao/internal/TableStatements;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    iput-object p2, p0, Lde/greenrobot/dao/internal/TableStatements;->tablename:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lde/greenrobot/dao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lde/greenrobot/dao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getDeleteStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->deleteStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v2, p0, Lde/greenrobot/dao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    invoke-static {v1, v2}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->deleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 65
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->deleteStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v1
.end method

.method public getInsertOrReplaceStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->insertOrReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 54
    const-string v1, "INSERT OR REPLACE INTO "

    iget-object v2, p0, Lde/greenrobot/dao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlInsert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->insertOrReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 57
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->insertOrReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v1
.end method

.method public getInsertStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->insertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 46
    const-string v1, "INSERT INTO "

    iget-object v2, p0, Lde/greenrobot/dao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlInsert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->insertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 49
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->insertStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v1
.end method

.method public getSelectAll()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lde/greenrobot/dao/internal/TableStatements;->selectAll:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lde/greenrobot/dao/internal/TableStatements;->tablename:Ljava/lang/String;

    const-string v1, "T"

    iget-object v2, p0, Lde/greenrobot/dao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/internal/TableStatements;->selectAll:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/internal/TableStatements;->selectAll:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectByKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/greenrobot/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "T"

    iget-object v2, p0, Lde/greenrobot/dao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lde/greenrobot/dao/internal/SqlUtils;->appendColumnsEqValue(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    .line 92
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    return-object v1
.end method

.method public getSelectByRowId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lde/greenrobot/dao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/greenrobot/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE ROWID=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->updateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v2, p0, Lde/greenrobot/dao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lde/greenrobot/dao/internal/SqlUtils;->createSqlUpdate(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->updateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 73
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/internal/TableStatements;->updateStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v1
.end method

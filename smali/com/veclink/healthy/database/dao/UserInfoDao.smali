.class public Lcom/veclink/healthy/database/dao/UserInfoDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "UserInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/healthy/database/dao/UserInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/veclink/healthy/database/entity/UserInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "USER_INFO"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/veclink/healthy/database/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/veclink/healthy/database/dao/DaoSession;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 46
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 51
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'USER_INFO\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'EMAIL\' TEXT PRIMARY KEY NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'NICK_NAME\' TEXT NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'SEX\' TEXT NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'SIGNATURE\' TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'BIRTHDAY\' TEXT NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'HEIGHT\' TEXT NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'WEIGHT\' TEXT NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'PRO_ID\' TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'CITY_ID\' TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'DISTRICT_ID\' TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'AVATAR\' TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void

    .line 50
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'USER_INFO\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void

    .line 67
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/veclink/healthy/database/entity/UserInfo;)V
    .locals 8
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/veclink/healthy/database/entity/UserInfo;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 76
    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "email":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 78
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :cond_0
    const/4 v6, 0x2

    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    const/4 v6, 0x3

    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getSex()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getSignature()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "signature":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 85
    const/4 v6, 0x4

    invoke-virtual {p1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 88
    const/4 v6, 0x6

    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getHeight()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 89
    const/4 v6, 0x7

    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getWeight()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getProId()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "proId":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 93
    const/16 v6, 0x8

    invoke-virtual {p1, v6, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :cond_2
    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getCityId()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "cityId":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 98
    const/16 v6, 0x9

    invoke-virtual {p1, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    :cond_3
    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getDistrictId()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "districtId":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 103
    const/16 v6, 0xa

    invoke-virtual {p1, v6, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    :cond_4
    invoke-virtual {p2}, Lcom/veclink/healthy/database/entity/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "avatar":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 108
    const/16 v6, 0xb

    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 110
    :cond_5
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p2, Lcom/veclink/healthy/database/entity/UserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/veclink/healthy/database/dao/UserInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/veclink/healthy/database/entity/UserInfo;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/veclink/healthy/database/entity/UserInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/veclink/healthy/database/dao/UserInfoDao;->getKey(Lcom/veclink/healthy/database/entity/UserInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/veclink/healthy/database/entity/UserInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/veclink/healthy/database/entity/UserInfo;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/veclink/healthy/database/entity/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/veclink/healthy/database/entity/UserInfo;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v11, 0x0

    .line 121
    new-instance v0, Lcom/veclink/healthy/database/entity/UserInfo;

    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v11

    :goto_0
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v11

    :goto_1
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v11

    :goto_2
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v11

    :goto_3
    add-int/lit8 v10, p2, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v11

    :goto_4
    add-int/lit8 v12, p2, 0xa

    invoke-interface {p1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_5

    :goto_5
    invoke-direct/range {v0 .. v11}, Lcom/veclink/healthy/database/entity/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "entity":Lcom/veclink/healthy/database/entity/UserInfo;
    return-object v0

    .line 121
    .end local v0    # "entity":Lcom/veclink/healthy/database/entity/UserInfo;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    add-int/lit8 v10, p2, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_5
    add-int/lit8 v11, p2, 0xa

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/veclink/healthy/database/dao/UserInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/veclink/healthy/database/entity/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/veclink/healthy/database/entity/UserInfo;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/veclink/healthy/database/entity/UserInfo;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 140
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setEmail(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setNickName(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setSex(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setSignature(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 145
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setHeight(Ljava/lang/String;)V

    .line 146
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setWeight(Ljava/lang/String;)V

    .line 147
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setProId(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setCityId(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    invoke-virtual {p2, v0}, Lcom/veclink/healthy/database/entity/UserInfo;->setDistrictId(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p2, v1}, Lcom/veclink/healthy/database/entity/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 151
    return-void

    .line 140
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_1
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 147
    :cond_2
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 148
    :cond_3
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 149
    :cond_4
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 150
    :cond_5
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 17
    check-cast p2, Lcom/veclink/healthy/database/entity/UserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/veclink/healthy/database/dao/UserInfoDao;->readEntity(Landroid/database/Cursor;Lcom/veclink/healthy/database/entity/UserInfo;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/veclink/healthy/database/dao/UserInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 115
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J

    .prologue
    .line 17
    check-cast p1, Lcom/veclink/healthy/database/entity/UserInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/veclink/healthy/database/dao/UserInfoDao;->updateKeyAfterInsert(Lcom/veclink/healthy/database/entity/UserInfo;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/veclink/healthy/database/entity/UserInfo;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/veclink/healthy/database/entity/UserInfo;
    .param p2, "rowId"    # J

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/veclink/healthy/database/entity/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

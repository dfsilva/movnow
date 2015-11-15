.class public Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;
.super Ljava/lang/Object;
.source "HealthyDBOprateWalkData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEveryDateTimeOfMonth(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v13, "dd"

    invoke-direct {v5, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 318
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v13, "MM"

    invoke-direct {v8, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 319
    .local v8, "monthFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 320
    .local v1, "c_begin":Ljava/util/Calendar;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 321
    .local v2, "c_end":Ljava/util/Calendar;
    add-int/lit8 v13, p2, -0x1

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v1, v0, v13, v14}, Ljava/util/Calendar;->set(III)V

    .line 322
    add-int/lit8 v13, p2, -0x1

    const/16 v14, 0x1f

    move/from16 v0, p1

    invoke-virtual {v2, v0, v13, v14}, Ljava/util/Calendar;->set(III)V

    .line 323
    const/4 v3, 0x1

    .line 324
    .local v3, "count":I
    const/4 v13, 0x6

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->add(II)V

    .line 325
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v12, "weeksfMonth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v11, "oneweek":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static/range {p0 .. p2}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->querySportDataByOnWeekAndMonth(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v10

    .line 328
    .local v10, "oneMonth":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 329
    .local v6, "days":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 331
    new-instance v13, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v8, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "monthString":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 333
    .local v4, "currentMonth":I
    move/from16 v0, p2

    if-ne v4, v0, :cond_0

    .line 334
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    const/4 v13, 0x7

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 337
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "oneweek":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .restart local v11    # "oneweek":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    add-int/lit8 v3, v3, 0x1

    .line 341
    :cond_1
    const/4 v13, 0x6

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->add(II)V

    .line 329
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 343
    .end local v4    # "currentMonth":I
    .end local v9    # "monthString":Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_3
    return-object v12
.end method

.method public static getWeekOfMonthData(Landroid/content/Context;II)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "months"    # I
    .param p2, "year"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 349
    invoke-static {p0, p2, p1}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->getEveryDateTimeOfMonth(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v0

    .line 351
    .local v0, "allWeekDataList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 353
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 354
    .local v6, "weekdata":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 351
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .end local v4    # "j":I
    .end local v6    # "weekdata":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 359
    .local v1, "calendar":Ljava/util/Calendar;
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v1, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 360
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 361
    const/4 v8, 0x5

    invoke-virtual {v1, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 362
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 363
    .local v7, "whichDayofWeek":I
    if-eq v7, v10, :cond_5

    .line 364
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v5, "newOneneweekdayList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v2, 0x0

    .line 366
    .local v2, "data":Lcom/veclink/healthy/database/entity/SportData;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_2

    .line 367
    new-instance v2, Lcom/veclink/healthy/database/entity/SportData;

    .end local v2    # "data":Lcom/veclink/healthy/database/entity/SportData;
    invoke-direct {v2}, Lcom/veclink/healthy/database/entity/SportData;-><init>()V

    .line 368
    .restart local v2    # "data":Lcom/veclink/healthy/database/entity/SportData;
    const-string v8, "0"

    invoke-virtual {v2, v8}, Lcom/veclink/healthy/database/entity/SportData;->setSportStep(Ljava/lang/String;)V

    .line 369
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 371
    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 372
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 374
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v12, :cond_4

    .line 375
    invoke-interface {v5, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 377
    :cond_4
    invoke-interface {v0, v9, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v2    # "data":Lcom/veclink/healthy/database/entity/SportData;
    .end local v5    # "newOneneweekdayList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_5
    const-string v8, "data"

    const-string v9, "----------------------------"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v8, "data"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7b2c"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u6708"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    .line 383
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 384
    .restart local v6    # "weekdata":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 381
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 389
    .end local v4    # "j":I
    .end local v6    # "weekdata":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_7
    return-object v0
.end method

.method public static loadSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 36
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 37
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 38
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 41
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 42
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportType:Lde/greenrobot/dao/Property;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 43
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportTime:Lde/greenrobot/dao/Property;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "030000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    sget-object v5, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportTime:Lde/greenrobot/dao/Property;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "210000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-array v6, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 44
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 45
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 47
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadSportDataByOneDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 58
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 59
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 60
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 63
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 64
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportType:Lde/greenrobot/dao/Property;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 65
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportTime:Lde/greenrobot/dao/Property;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "000000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    sget-object v5, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportTime:Lde/greenrobot/dao/Property;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "235959"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-array v6, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 66
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 67
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 69
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadSportOriginDataByMonth(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year_mouth"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 80
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 81
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 82
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 85
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 86
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportTime:Lde/greenrobot/dao/Property;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "01000000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    sget-object v5, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportTime:Lde/greenrobot/dao/Property;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "31235959"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lde/greenrobot/dao/query/WhereCondition;

    sget-object v7, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportType:Lde/greenrobot/dao/Property;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 88
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 89
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 91
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static queryOneWeekSportData(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v4, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    const/4 v2, 0x0

    .line 177
    .local v2, "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, "queryDays":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x6

    if-gt v1, v5, :cond_1

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .restart local v2    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-nez v1, :cond_0

    .line 184
    invoke-static {p1}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 190
    :goto_1
    invoke-static {p0, v3}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->loadSportDataByOneDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 191
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 188
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 193
    :cond_1
    return-object v4
.end method

.method public static querySportData(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v4, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;>;"
    const/4 v2, 0x0

    .line 151
    .local v2, "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "queryDays":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x6

    if-gt v1, v5, :cond_1

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .restart local v2    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-nez v1, :cond_0

    .line 158
    invoke-static {p1}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 164
    :goto_1
    invoke-static {p0, v3}, Lcom/veclink/healthy/database/op/HealthyDBOprateWalkData;->loadSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 162
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 167
    :cond_1
    return-object v4
.end method

.method public static querySportDataByOnMonth(Landroid/content/Context;II)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v1, 0x0

    .line 209
    .local v1, "data":Lcom/veclink/healthy/database/entity/SportData;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 210
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10, p1}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/4 v10, 0x2

    invoke-virtual {v0, v10, p2}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 214
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 215
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 216
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 218
    .local v2, "days":I
    const/4 v8, 0x0

    .line 219
    .local v8, "queryDays":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 220
    new-instance v1, Lcom/veclink/healthy/database/entity/SportData;

    .end local v1    # "data":Lcom/veclink/healthy/database/entity/SportData;
    invoke-direct {v1}, Lcom/veclink/healthy/database/entity/SportData;-><init>()V

    .line 221
    .restart local v1    # "data":Lcom/veclink/healthy/database/entity/SportData;
    const/4 v7, 0x0

    .line 222
    .local v7, "oneDaysteps":I
    if-nez v3, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 231
    :goto_1
    invoke-static {p0, v8}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 232
    .local v6, "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-eqz v6, :cond_1

    .line 233
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/veclink/healthy/database/entity/SportData;

    .line 234
    .local v5, "item":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v5}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v7, v10

    .line 235
    goto :goto_2

    .line 227
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/veclink/healthy/database/entity/SportData;
    .end local v6    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_0
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 228
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 238
    .restart local v6    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_1
    const/4 v7, 0x0

    .line 242
    :cond_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/veclink/healthy/database/entity/SportData;->setSportStep(Ljava/lang/String;)V

    .line 243
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v6    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v7    # "oneDaysteps":I
    :cond_3
    return-object v9
.end method

.method public static querySportDataByOnWeek(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v8, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v1, 0x0

    .line 104
    .local v1, "data":Lcom/veclink/healthy/database/entity/SportData;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, "queryDays":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v9, 0x6

    if-gt v2, v9, :cond_2

    .line 108
    new-instance v1, Lcom/veclink/healthy/database/entity/SportData;

    .end local v1    # "data":Lcom/veclink/healthy/database/entity/SportData;
    invoke-direct {v1}, Lcom/veclink/healthy/database/entity/SportData;-><init>()V

    .line 109
    .restart local v1    # "data":Lcom/veclink/healthy/database/entity/SportData;
    const/4 v6, 0x0

    .line 110
    .local v6, "oneDaysteps":I
    if-nez v2, :cond_0

    .line 112
    invoke-static {p1}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 118
    :goto_1
    invoke-static {p0, v7}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 119
    .local v5, "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-eqz v5, :cond_1

    .line 120
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    .line 121
    .local v4, "item":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v6, v9

    .line 122
    goto :goto_2

    .line 115
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/veclink/healthy/database/entity/SportData;
    .end local v5    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_0
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v9}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 125
    .restart local v5    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/veclink/healthy/database/entity/SportData;->setSportStep(Ljava/lang/String;)V

    .line 126
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v5    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v6    # "oneDaysteps":I
    :cond_2
    return-object v8
.end method

.method public static querySportDataByOnWeekAndMonth(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v11, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v2, 0x0

    .line 258
    .local v2, "data":Lcom/veclink/healthy/database/entity/SportData;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 259
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v13, 0x1

    move/from16 v0, p1

    invoke-virtual {v1, v13, v0}, Ljava/util/Calendar;->set(II)V

    .line 260
    const/4 v13, 0x2

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 261
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 262
    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 263
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 264
    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 265
    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 266
    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 267
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 269
    .local v4, "days":I
    const/4 v13, 0x7

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 270
    .local v3, "day_of_week":I
    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 271
    .local v12, "week_of_month":I
    const/4 v10, 0x0

    .line 272
    .local v10, "queryDays":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 273
    new-instance v2, Lcom/veclink/healthy/database/entity/SportData;

    .end local v2    # "data":Lcom/veclink/healthy/database/entity/SportData;
    invoke-direct {v2}, Lcom/veclink/healthy/database/entity/SportData;-><init>()V

    .line 274
    .restart local v2    # "data":Lcom/veclink/healthy/database/entity/SportData;
    const/4 v9, 0x0

    .line 275
    .local v9, "oneDaysteps":I
    if-nez v5, :cond_0

    .line 277
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 283
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 284
    .local v8, "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-eqz v8, :cond_1

    .line 285
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/veclink/healthy/database/entity/SportData;

    .line 286
    .local v7, "item":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v9, v13

    .line 287
    goto :goto_2

    .line 280
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "item":Lcom/veclink/healthy/database/entity/SportData;
    .end local v8    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_0
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->add(II)V

    .line 281
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/veclink/movnow_q2/util/StringUtil;->formatCurrDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 290
    .restart local v8    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :cond_1
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/veclink/healthy/database/entity/SportData;->setSportStep(Ljava/lang/String;)V

    .line 291
    const-string v13, "queryDays"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "oneDaysteps:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/4 v13, 0x7

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 272
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 298
    .end local v8    # "oneDateSportData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v9    # "oneDaysteps":I
    :cond_3
    return-object v11
.end method

.method public static totalStepsByWeek(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "sportDatasList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/4 v1, 0x0

    .line 137
    .local v1, "totalSteps":I
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 139
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/SportData;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/SportData;->getSportStep()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_0
    return v1
.end method

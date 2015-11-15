.class public Lcom/veclink/healthy/database/op/HealthyDBOperate;
.super Ljava/lang/Object;
.source "HealthyDBOperate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExerciseAmount(Landroid/content/Context;Lcom/veclink/healthy/database/entity/ExerciseAmount;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exerciseAmount"    # Lcom/veclink/healthy/database/entity/ExerciseAmount;

    .prologue
    .line 342
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2, p1}, Lcom/veclink/healthy/database/dao/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    .line 343
    .local v0, "ret":J
    return-wide v0
.end method

.method public static addExerciseAmountList(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/ExerciseAmount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "exerciseAmountList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/ExerciseAmount;>;"
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getExerciseAmountDao()Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    move-result-object v0

    .line 353
    .local v0, "dao":Lcom/veclink/healthy/database/dao/ExerciseAmountDao;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;->getSession()Lde/greenrobot/dao/AbstractDaoSession;

    move-result-object v1

    new-instance v2, Lcom/veclink/healthy/database/op/HealthyDBOperate$3;

    invoke-direct {v2, p1, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate$3;-><init>(Ljava/util/List;Lcom/veclink/healthy/database/dao/ExerciseAmountDao;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static addOriginSleepdataList(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "originDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v0

    .line 36
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepDataDao;->getSession()Lde/greenrobot/dao/AbstractDaoSession;

    move-result-object v1

    new-instance v2, Lcom/veclink/healthy/database/op/HealthyDBOperate$1;

    invoke-direct {v2, p1, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate$1;-><init>(Ljava/util/List;Lcom/veclink/healthy/database/dao/SleepDataDao;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static addOriginSportDataList(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "originDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 81
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->getSession()Lde/greenrobot/dao/AbstractDaoSession;

    move-result-object v1

    new-instance v2, Lcom/veclink/healthy/database/op/HealthyDBOperate$2;

    invoke-direct {v2, p1, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate$2;-><init>(Ljava/util/List;Lcom/veclink/healthy/database/dao/SportDataDao;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static addSleepQuality(Landroid/content/Context;Lcom/veclink/healthy/database/entity/SleepQuality;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sleepQuality"    # Lcom/veclink/healthy/database/entity/SleepQuality;

    .prologue
    .line 423
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2, p1}, Lcom/veclink/healthy/database/dao/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    .line 424
    .local v0, "ret":J
    return-wide v0
.end method

.method public static addSleepQualityList(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepQuality;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "sleepQualityList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepQuality;>;"
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepQualityDao()Lcom/veclink/healthy/database/dao/SleepQualityDao;

    move-result-object v0

    .line 434
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepQualityDao;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepQualityDao;->getSession()Lde/greenrobot/dao/AbstractDaoSession;

    move-result-object v1

    new-instance v2, Lcom/veclink/healthy/database/op/HealthyDBOperate$4;

    invoke-direct {v2, p1, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate$4;-><init>(Ljava/util/List;Lcom/veclink/healthy/database/dao/SleepQualityDao;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static addUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uptakeCalorie"    # Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .prologue
    .line 493
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2, p1}, Lcom/veclink/healthy/database/dao/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    .line 494
    .local v0, "ret":J
    return-wide v0
.end method

.method public static addUptakeCalorieList(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "uptakeCalorieList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/UptakeCalorie;>;"
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getUptakeCalorieDao()Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    move-result-object v0

    .line 515
    .local v0, "dao":Lcom/veclink/healthy/database/dao/UptakeCalorieDao;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->getSession()Lde/greenrobot/dao/AbstractDaoSession;

    move-result-object v1

    new-instance v2, Lcom/veclink/healthy/database/op/HealthyDBOperate$5;

    invoke-direct {v2, p1, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate$5;-><init>(Ljava/util/List;Lcom/veclink/healthy/database/dao/UptakeCalorieDao;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static delAllSportAndSleepData(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 303
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->deleteAll()V

    .line 304
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v1

    .line 305
    .local v1, "sleepDataDao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/SleepDataDao;->deleteAll()V

    .line 306
    return-void
.end method

.method public static delLastSyncData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "dateType"    # I

    .prologue
    .line 314
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 315
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v5

    iget-object v5, v5, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v5}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 316
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportAfterDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 317
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-virtual {v0, v2}, Lcom/veclink/healthy/database/dao/SportDataDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 330
    .end local v0    # "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 319
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v5

    iget-object v5, v5, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v5}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v3

    .line 320
    .local v3, "sleepDataDao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSleepAfterDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 321
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-virtual {v3, v1}, Lcom/veclink/healthy/database/dao/SleepDataDao;->deleteInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 323
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v3    # "sleepDataDao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    :cond_1
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v5

    iget-object v5, v5, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v5}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 324
    .restart local v0    # "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSportAfterDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 325
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v5

    iget-object v5, v5, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v5}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v3

    .line 326
    .restart local v3    # "sleepDataDao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->loadOriginSleepAfterDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 327
    .local v4, "splist":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-virtual {v3, v4}, Lcom/veclink/healthy/database/dao/SleepDataDao;->deleteInTx(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public static delUptakeCalorie(Landroid/content/Context;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 587
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getUptakeCalorieDao()Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    move-result-object v0

    .line 588
    .local v0, "dao":Lcom/veclink/healthy/database/dao/UptakeCalorieDao;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->deleteByKey(Ljava/lang/Object;)V

    .line 589
    return-void
.end method

.method public static delUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .prologue
    .line 597
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getUptakeCalorieDao()Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    move-result-object v0

    .line 598
    .local v0, "dao":Lcom/veclink/healthy/database/dao/UptakeCalorieDao;
    invoke-virtual {v0, p1}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->delete(Ljava/lang/Object;)V

    .line 599
    return-void
.end method

.method public static isExitSleepRecord(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v3

    iget-object v3, v3, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v0

    .line 109
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 110
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepData;>;"
    sget-object v3, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 111
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 114
    :cond_0
    return v2
.end method

.method public static isExitSportRecord(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v3

    iget-object v3, v3, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 98
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 99
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    sget-object v3, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->_id:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 100
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 101
    const/4 v2, 0x1

    .line 103
    :cond_0
    return v2
.end method

.method public static loadAllExerciseAmount(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/ExerciseAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v1

    iget-object v1, v1, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/DaoSession;->getExerciseAmountDao()Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 376
    .local v0, "exerciseAmountList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/ExerciseAmount;>;"
    return-object v0
.end method

.method public static loadAllUptakeCalorie(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getUptakeCalorieDao()Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    move-result-object v0

    .line 539
    .local v0, "dao":Lcom/veclink/healthy/database/dao/UptakeCalorieDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->loadAll()Ljava/util/List;

    move-result-object v1

    .line 540
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/UptakeCalorie;>;"
    return-object v1
.end method

.method public static loadExerciseAmountByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
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
            "Lcom/veclink/healthy/database/entity/ExerciseAmount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 387
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getExerciseAmountDao()Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    move-result-object v0

    .line 388
    .local v0, "dao":Lcom/veclink/healthy/database/dao/ExerciseAmountDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 390
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/ExerciseAmount;>;"
    sget-object v2, Lcom/veclink/healthy/database/dao/ExerciseAmountDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/veclink/healthy/database/dao/ExerciseAmountDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "235959"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 391
    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/veclink/healthy/database/dao/ExerciseAmountDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 392
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 393
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 395
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadExerciseAmountByMonth(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mouth"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/ExerciseAmount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 405
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getExerciseAmountDao()Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    move-result-object v0

    .line 406
    .local v0, "dao":Lcom/veclink/healthy/database/dao/ExerciseAmountDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 407
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/ExerciseAmount;>;"
    sget-object v2, Lcom/veclink/healthy/database/dao/ExerciseAmountDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "01000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/veclink/healthy/database/dao/ExerciseAmountDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "31235959"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 408
    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/veclink/healthy/database/dao/ExerciseAmountDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 409
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 410
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 412
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadOriginDataOfSleepByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 57
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v0

    .line 58
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 59
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 62
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 63
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

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

    sget-object v5, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

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

    .line 67
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 68
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 70
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadOriginSleepAfterDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
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
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 257
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v0

    .line 258
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 259
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 262
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 263
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, p1}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    sget-object v5, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-array v6, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 264
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->SleepDuration:Lde/greenrobot/dao/Property;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 265
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 266
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 268
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadOriginSportAfterDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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

    .line 235
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 236
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 237
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 240
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 241
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportType:Lde/greenrobot/dao/Property;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 242
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

    const-string v7, "000000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-array v6, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 243
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportStep:Lde/greenrobot/dao/Property;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 244
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 245
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 247
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadOriginSportDataByDate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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

    .line 214
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 215
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 216
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 219
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 220
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportType:Lde/greenrobot/dao/Property;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 221
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

    .line 222
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 223
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 225
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadSleepQualityByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
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
            "Lcom/veclink/healthy/database/entity/SleepQuality;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 457
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepQualityDao()Lcom/veclink/healthy/database/dao/SleepQualityDao;

    move-result-object v0

    .line 458
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepQualityDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepQualityDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 460
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepQuality;>;"
    sget-object v2, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "235959"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 461
    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 462
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 463
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 465
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadSleepQualityByMonth(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mouth"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepQuality;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 475
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepQualityDao()Lcom/veclink/healthy/database/dao/SleepQualityDao;

    move-result-object v0

    .line 476
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepQualityDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepQualityDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 477
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepQuality;>;"
    sget-object v2, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "01000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "31235959"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 478
    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 479
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 480
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 482
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadSportOriginDataAmountByMonth(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mouth"    # Ljava/lang/String;
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

    .line 281
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 282
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 283
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 286
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 287
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

    const-string v7, "31240000"

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

    .line 289
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 290
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 292
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static loadUptakeCalorieByDay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 551
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getUptakeCalorieDao()Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    move-result-object v0

    .line 552
    .local v0, "dao":Lcom/veclink/healthy/database/dao/UptakeCalorieDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 554
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/UptakeCalorie;>;"
    sget-object v2, Lcom/veclink/healthy/database/dao/UptakeCalorieDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 555
    sget-object v2, Lcom/veclink/healthy/database/dao/UptakeCalorieDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 556
    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/veclink/healthy/database/dao/UptakeCalorieDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 558
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 559
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 561
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadUptakeCalorieByMonth(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mouth"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 571
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v2

    iget-object v2, v2, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/dao/DaoSession;->getUptakeCalorieDao()Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    move-result-object v0

    .line 572
    .local v0, "dao":Lcom/veclink/healthy/database/dao/UptakeCalorieDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 573
    .local v1, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/UptakeCalorie;>;"
    sget-object v2, Lcom/veclink/healthy/database/dao/UptakeCalorieDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "01000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/veclink/healthy/database/dao/UptakeCalorieDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "31235959"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->le(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->and(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 574
    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/veclink/healthy/database/dao/UptakeCalorieDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderDesc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 575
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 576
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 578
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static queryAlWaitUploadSleepData(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 150
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v0

    .line 151
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SleepDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 152
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 155
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 156
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->SleepDuration:Lde/greenrobot/dao/Property;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 157
    sget-object v4, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->Hadupload:Lde/greenrobot/dao/Property;

    const-string v5, "wait"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 158
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 159
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 162
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static queryAlWaitUploadSportData(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 127
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v4

    iget-object v4, v4, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 128
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 129
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 132
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 133
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportType:Lde/greenrobot/dao/Property;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 134
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportStep:Lde/greenrobot/dao/Property;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 135
    sget-object v4, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->Hadupload:Lde/greenrobot/dao/Property;

    const-string v5, "wait"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->ge(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 136
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 137
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 140
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static updateDataUserIdIfUserIdIsEmty(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    .line 171
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v11

    iget-object v11, v11, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v11}, Lcom/veclink/healthy/database/dao/DaoSession;->getSportDataDao()Lcom/veclink/healthy/database/dao/SportDataDao;

    move-result-object v0

    .line 173
    .local v0, "dao":Lcom/veclink/healthy/database/dao/SportDataDao;
    invoke-virtual {v0}, Lcom/veclink/healthy/database/dao/SportDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 174
    .local v4, "qb":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "deviceId":Ljava/lang/String;
    sget-object v11, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    const-string v12, ""

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    new-array v12, v13, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v11, v12}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 177
    sget-object v11, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    new-array v12, v13, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v11, v12}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 179
    invoke-virtual {v4}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, "emtyUserIdDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 181
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/veclink/healthy/database/entity/SportData;

    .line 182
    .local v9, "sportData":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v9, v10}, Lcom/veclink/healthy/database/entity/SportData;->setUserId(Ljava/lang/String;)V

    .line 183
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/veclink/healthy/database/entity/SportData;->get_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/veclink/healthy/database/entity/SportData;->set_id(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v9    # "sportData":Lcom/veclink/healthy/database/entity/SportData;
    :cond_0
    invoke-virtual {v0, v2}, Lcom/veclink/healthy/database/dao/SportDataDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 187
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v11

    iget-object v11, v11, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v11}, Lcom/veclink/healthy/database/dao/DaoSession;->getSleepDataDao()Lcom/veclink/healthy/database/dao/SleepDataDao;

    move-result-object v7

    .line 188
    .local v7, "sleepDataDao":Lcom/veclink/healthy/database/dao/SleepDataDao;
    invoke-virtual {v7}, Lcom/veclink/healthy/database/dao/SleepDataDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    .line 189
    .local v5, "queryBuilder":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/veclink/healthy/database/entity/SleepData;>;"
    sget-object v11, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    const-string v12, ""

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    new-array v12, v13, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v5, v11, v12}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 190
    sget-object v11, Lcom/veclink/healthy/database/dao/SleepDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    invoke-virtual {v11, v1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    new-array v12, v13, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v5, v11, v12}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 191
    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v8

    .line 192
    .local v8, "sleepDataTotalList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 193
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/veclink/healthy/database/entity/SleepData;

    .line 194
    .local v6, "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v6, v10}, Lcom/veclink/healthy/database/entity/SleepData;->setUserId(Ljava/lang/String;)V

    .line 195
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/veclink/healthy/database/entity/SleepData;->get_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/veclink/healthy/database/entity/SleepData;->set_id(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    .end local v6    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_2
    invoke-virtual {v7, v8}, Lcom/veclink/healthy/database/dao/SleepDataDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 201
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public static updateUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uptakeCalorie"    # Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .prologue
    .line 504
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBManager;->getInstance(Landroid/content/Context;)Lcom/veclink/healthy/database/op/HealthyDBManager;

    move-result-object v0

    iget-object v0, v0, Lcom/veclink/healthy/database/op/HealthyDBManager;->mDaoSession:Lcom/veclink/healthy/database/dao/DaoSession;

    invoke-virtual {v0, p1}, Lcom/veclink/healthy/database/dao/DaoSession;->update(Ljava/lang/Object;)V

    .line 506
    return-void
.end method

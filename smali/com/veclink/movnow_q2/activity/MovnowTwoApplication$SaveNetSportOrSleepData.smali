.class Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;
.super Landroid/os/AsyncTask;
.source "MovnowTwoApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveNetSportOrSleepData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field eventName:Ljava/lang/String;

.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;


# direct methods
.method private constructor <init>(Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;->this$0:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    .param p2, "x1"    # Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$1;

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;-><init>(Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 654
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;->eventName:Ljava/lang/String;

    .line 655
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;->eventName:Ljava/lang/String;

    const-class v8, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 656
    aget-object v5, p1, v9

    check-cast v5, Ljava/util/List;

    .line 657
    .local v5, "netDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net SportData size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SportData;

    .line 660
    .local v4, "item":Lcom/veclink/healthy/database/entity/SportData;
    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->getSportTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportDataId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, "id":Ljava/lang/String;
    sget-object v7, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->isExitSportRecord(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 662
    const-string v7, "done"

    invoke-virtual {v4, v7}, Lcom/veclink/healthy/database/entity/SportData;->setHadupload(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v4, v3}, Lcom/veclink/healthy/database/entity/SportData;->set_id(Ljava/lang/String;)V

    .line 664
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_0
    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SportData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 668
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "item":Lcom/veclink/healthy/database/entity/SportData;
    :cond_1
    sget-object v7, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->addOriginSportDataList(Landroid/content/Context;Ljava/util/List;)V

    .line 685
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v5    # "netDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :goto_1
    iget-object v7, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;->eventName:Ljava/lang/String;

    return-object v7

    .line 670
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    aget-object v6, p1, v9

    check-cast v6, Ljava/util/List;

    .line 671
    .local v6, "netSleepDataDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net SleepData size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 673
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/database/entity/SleepData;

    .line 674
    .local v4, "item":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SleepData;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SleepData;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SleepData;->getDateTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SleepData;->getStartTime()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportDataId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 675
    .restart local v3    # "id":Ljava/lang/String;
    sget-object v7, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->isExitSleepRecord(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 676
    const-string v7, "done"

    invoke-virtual {v4, v7}, Lcom/veclink/healthy/database/entity/SleepData;->setHadupload(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v4, v3}, Lcom/veclink/healthy/database/entity/SleepData;->set_id(Ljava/lang/String;)V

    .line 678
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_3
    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/SleepData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 682
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "item":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_4
    sget-object v7, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->addOriginSleepdataList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 693
    return-void
.end method

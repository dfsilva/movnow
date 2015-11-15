.class public Lcom/veclink/healthy/task/SaveSyncDataRunnable;
.super Ljava/lang/Object;
.source "SaveSyncDataRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SAVEDATADONE:I = 0x3f2


# instance fields
.field private deviceSportAndSleepData:Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

.field private handler:Landroid/os/Handler;

.field private logObject:Lcom/veclink/healthy/database/entity/LogObject;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;Lcom/veclink/healthy/database/entity/LogObject;Landroid/os/Handler;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "deviceSportAndSleepData"    # Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
    .param p3, "logObject"    # Lcom/veclink/healthy/database/entity/LogObject;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->deviceSportAndSleepData:Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    .line 52
    iput-object p3, p0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->logObject:Lcom/veclink/healthy/database/entity/LogObject;

    .line 53
    iput-object p4, p0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->handler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method public static createSportData(Landroid/content/Context;Ljava/lang/String;)Lcom/veclink/healthy/database/entity/SportData;
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "sportTime"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "deviceId":Ljava/lang/String;
    invoke-static {v2, v3, p1}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportDataId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "id":Ljava/lang/String;
    const-string v5, "01"

    .line 182
    .local v5, "sportType":Ljava/lang/String;
    const-string v6, "0"

    .line 183
    .local v6, "sportStep":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "deviceType":Ljava/lang/String;
    new-instance v0, Lcom/veclink/healthy/database/entity/SportData;

    const-string v7, "1800"

    const-string v9, "wait"

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/veclink/healthy/database/entity/SportData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, "originData":Lcom/veclink/healthy/database/entity/SportData;
    return-object v0
.end method

.method public static createSportDataId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "sportTime"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static intToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 189
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 57

    .prologue
    .line 59
    const/4 v8, 0x0

    .line 60
    .local v8, "dataType":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->deviceSportAndSleepData:Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    iget-object v6, v6, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 61
    const/4 v8, 0x1

    .line 65
    :cond_0
    :goto_0
    const-string v6, "DataType:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/movnow_q2/util/DebugUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/veclink/healthy/database/op/HealthyDBSyncRecordOperate;->loadLastSyncRecordByDataType(Landroid/content/Context;I)Lcom/veclink/healthy/database/entity/SyncRecord;

    move-result-object v50

    .line 67
    .local v50, "oldrecord":Lcom/veclink/healthy/database/entity/SyncRecord;
    if-eqz v50, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-virtual/range {v50 .. v50}, Lcom/veclink/healthy/database/entity/SyncRecord;->getLastSyncTime()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->delLastSyncData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 69
    :cond_1
    const/16 v17, 0x0

    .line 70
    .local v17, "deviceType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 71
    const-string v17, "Q2"

    .line 77
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "deviceImei":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "_id":Ljava/lang/String;
    new-instance v2, Lcom/veclink/healthy/database/entity/SyncRecord;

    invoke-static {}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getNowTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getNowTime()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lcom/veclink/healthy/database/entity/SyncRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .local v2, "record":Lcom/veclink/healthy/database/entity/SyncRecord;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/veclink/healthy/database/op/HealthyDBSyncRecordOperate;->addSyncRecord(Landroid/content/Context;Lcom/veclink/healthy/database/entity/SyncRecord;)J

    .line 82
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, "deviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->logObject:Lcom/veclink/healthy/database/entity/LogObject;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lcom/veclink/healthy/database/entity/LogObject;->setResult(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->logObject:Lcom/veclink/healthy/database/entity/LogObject;

    invoke-static {v6, v7}, Lcom/veclink/healthy/database/op/HealthyDBLogOperate;->addLogObject(Landroid/content/Context;Lcom/veclink/healthy/database/entity/LogObject;)J

    .line 85
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->deviceSportAndSleepData:Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    iget-object v0, v6, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    move-object/from16 v44, v0

    .line 86
    .local v44, "deviceOrighSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/bracelet/bean/DeviceSportData;>;"
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v52, "sportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    const/16 v55, 0x0

    .line 88
    .local v55, "totalStep":I
    new-instance v53, Ljava/util/HashMap;

    invoke-direct/range {v53 .. v53}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v53, "sportTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .local v49, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/veclink/bracelet/bean/DeviceSportData;

    .line 90
    .local v46, "deviceSportData":Lcom/veclink/bracelet/bean/DeviceSportData;
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/veclink/bracelet/bean/DeviceSportData;->sportTime:Ljava/lang/String;

    .line 91
    .local v13, "sportTime":Ljava/lang/String;
    move-object/from16 v0, v46

    iget-object v14, v0, Lcom/veclink/bracelet/bean/DeviceSportData;->sportType:Ljava/lang/String;

    .line 92
    .local v14, "sportType":Ljava/lang/String;
    move-object/from16 v0, v46

    iget v6, v0, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, "sportStep":Ljava/lang/String;
    move-object/from16 v0, v53

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 94
    move-object/from16 v0, v53

    invoke-virtual {v0, v13, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-object/from16 v0, v46

    iget v6, v0, Lcom/veclink/bracelet/bean/DeviceSportData;->sportStep:I

    add-int v55, v55, v6

    .line 97
    invoke-static {v4, v12, v13}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportDataId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "id":Ljava/lang/String;
    new-instance v9, Lcom/veclink/healthy/database/entity/SportData;

    const-string v16, "1800"

    const-string v18, "wait"

    move-object v11, v4

    invoke-direct/range {v9 .. v18}, Lcom/veclink/healthy/database/entity/SportData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v9, "originData":Lcom/veclink/healthy/database/entity/SportData;
    move-object/from16 v0, v52

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 62
    .end local v2    # "record":Lcom/veclink/healthy/database/entity/SyncRecord;
    .end local v3    # "_id":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "deviceImei":Ljava/lang/String;
    .end local v9    # "originData":Lcom/veclink/healthy/database/entity/SportData;
    .end local v10    # "id":Ljava/lang/String;
    .end local v12    # "deviceId":Ljava/lang/String;
    .end local v13    # "sportTime":Ljava/lang/String;
    .end local v14    # "sportType":Ljava/lang/String;
    .end local v15    # "sportStep":Ljava/lang/String;
    .end local v17    # "deviceType":Ljava/lang/String;
    .end local v44    # "deviceOrighSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/bracelet/bean/DeviceSportData;>;"
    .end local v46    # "deviceSportData":Lcom/veclink/bracelet/bean/DeviceSportData;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v50    # "oldrecord":Lcom/veclink/healthy/database/entity/SyncRecord;
    .end local v52    # "sportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .end local v53    # "sportTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v55    # "totalStep":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->deviceSportAndSleepData:Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    iget-object v6, v6, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSleepDataResult:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 63
    const/4 v8, 0x2

    goto/16 :goto_0

    .line 73
    .restart local v17    # "deviceType":Ljava/lang/String;
    .restart local v50    # "oldrecord":Lcom/veclink/healthy/database/entity/SyncRecord;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 103
    .restart local v2    # "record":Lcom/veclink/healthy/database/entity/SyncRecord;
    .restart local v3    # "_id":Ljava/lang/String;
    .restart local v4    # "userId":Ljava/lang/String;
    .restart local v5    # "deviceImei":Ljava/lang/String;
    .restart local v12    # "deviceId":Ljava/lang/String;
    .restart local v44    # "deviceOrighSportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/bracelet/bean/DeviceSportData;>;"
    .restart local v49    # "i$":Ljava/util/Iterator;
    .restart local v52    # "sportDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .restart local v53    # "sportTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v55    # "totalStep":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v0, v52

    invoke-static {v6, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->addOriginSportDataList(Landroid/content/Context;Ljava/util/List;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->deviceSportAndSleepData:Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;

    iget-object v0, v6, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSleepDataResult:Ljava/util/List;

    move-object/from16 v43, v0

    .line 106
    .local v43, "deviceOrighSleepDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/bracelet/bean/DeviceSleepData;>;"
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v51, "sleepDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    const/16 v56, 0x0

    .line 108
    .local v56, "totalsleeptime":I
    const/16 v48, 0x1

    .line 109
    .local v48, "devideNightdata":Z
    const/16 v47, 0x1

    .line 110
    .local v47, "devideDaytimedata":Z
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    :goto_3
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/veclink/bracelet/bean/DeviceSleepData;

    .line 111
    .local v45, "deviceSleepData":Lcom/veclink/bracelet/bean/DeviceSleepData;
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/veclink/bracelet/bean/DeviceSleepData;->dateTime:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 112
    .local v22, "dateTime":Ljava/lang/String;
    move-object/from16 v0, v45

    iget v0, v0, Lcom/veclink/bracelet/bean/DeviceSleepData;->startTime:I

    move/from16 v38, v0

    .line 113
    .local v38, "startTime":I
    move-object/from16 v0, v45

    iget v0, v0, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepDuration:I

    move/from16 v39, v0

    .line 114
    .local v39, "sleepDuration":I
    const/16 v6, 0x4ec

    move/from16 v0, v38

    if-ge v0, v6, :cond_6

    add-int v6, v38, v39

    const/16 v7, 0x4ec

    if-le v6, v7, :cond_6

    if-eqz v48, :cond_6

    .line 116
    move/from16 v23, v38

    .line 117
    .local v23, "startTime1":I
    move/from16 v0, v38

    rsub-int v0, v0, 0x4ec

    move/from16 v24, v0

    .line 118
    .local v24, "sleepDuration1":I
    const/16 v31, 0x4ec

    .line 119
    .local v31, "startTime2":I
    sub-int v32, v39, v24

    .line 120
    .local v32, "sleepDuration2":I
    add-int v56, v56, v39

    .line 121
    move-object/from16 v0, v45

    iget v6, v0, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepState:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    .line 122
    .local v25, "sleepState":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v12, v6}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportDataId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 123
    .restart local v10    # "id":Ljava/lang/String;
    new-instance v18, Lcom/veclink/healthy/database/entity/SleepData;

    const-string v27, "wait"

    move-object/from16 v19, v10

    move-object/from16 v20, v4

    move-object/from16 v21, v12

    move-object/from16 v26, v17

    invoke-direct/range {v18 .. v27}, Lcom/veclink/healthy/database/entity/SleepData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v18, "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    move-object/from16 v0, v51

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v26, Lcom/veclink/healthy/database/entity/SleepData;

    const-string v35, "wait"

    move-object/from16 v27, v10

    move-object/from16 v28, v4

    move-object/from16 v29, v12

    move-object/from16 v30, v22

    move-object/from16 v33, v25

    move-object/from16 v34, v17

    invoke-direct/range {v26 .. v35}, Lcom/veclink/healthy/database/entity/SleepData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v26, "sleepData2":Lcom/veclink/healthy/database/entity/SleepData;
    move-object/from16 v0, v51

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const/16 v48, 0x0

    .line 130
    goto/16 :goto_3

    .end local v10    # "id":Ljava/lang/String;
    .end local v18    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    .end local v23    # "startTime1":I
    .end local v24    # "sleepDuration1":I
    .end local v25    # "sleepState":Ljava/lang/String;
    .end local v26    # "sleepData2":Lcom/veclink/healthy/database/entity/SleepData;
    .end local v31    # "startTime2":I
    .end local v32    # "sleepDuration2":I
    :cond_6
    const/16 v6, 0x21c

    move/from16 v0, v38

    if-ge v0, v6, :cond_7

    add-int v6, v38, v39

    const/16 v7, 0x21c

    if-le v6, v7, :cond_7

    if-eqz v47, :cond_7

    .line 132
    move/from16 v23, v38

    .line 133
    .restart local v23    # "startTime1":I
    move/from16 v0, v38

    rsub-int v0, v0, 0x21c

    move/from16 v24, v0

    .line 134
    .restart local v24    # "sleepDuration1":I
    const/16 v31, 0x21c

    .line 135
    .restart local v31    # "startTime2":I
    sub-int v32, v39, v24

    .line 136
    .restart local v32    # "sleepDuration2":I
    add-int v56, v56, v39

    .line 137
    move-object/from16 v0, v45

    iget v6, v0, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepState:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    .line 138
    .restart local v25    # "sleepState":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v12, v6}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportDataId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 139
    .restart local v10    # "id":Ljava/lang/String;
    new-instance v18, Lcom/veclink/healthy/database/entity/SleepData;

    const-string v42, "wait"

    move-object/from16 v33, v18

    move-object/from16 v34, v10

    move-object/from16 v35, v4

    move-object/from16 v36, v12

    move-object/from16 v37, v22

    move/from16 v38, v23

    move/from16 v39, v24

    move-object/from16 v40, v25

    move-object/from16 v41, v17

    invoke-direct/range {v33 .. v42}, Lcom/veclink/healthy/database/entity/SleepData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v38    # "startTime":I
    .end local v39    # "sleepDuration":I
    .restart local v18    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    move-object/from16 v0, v51

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v26, Lcom/veclink/healthy/database/entity/SleepData;

    const-string v35, "wait"

    move-object/from16 v27, v10

    move-object/from16 v28, v4

    move-object/from16 v29, v12

    move-object/from16 v30, v22

    move-object/from16 v33, v25

    move-object/from16 v34, v17

    invoke-direct/range {v26 .. v35}, Lcom/veclink/healthy/database/entity/SleepData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .restart local v26    # "sleepData2":Lcom/veclink/healthy/database/entity/SleepData;
    move-object/from16 v0, v51

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const/16 v47, 0x0

    .line 146
    goto/16 :goto_3

    .line 147
    .end local v10    # "id":Ljava/lang/String;
    .end local v18    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    .end local v23    # "startTime1":I
    .end local v24    # "sleepDuration1":I
    .end local v25    # "sleepState":Ljava/lang/String;
    .end local v26    # "sleepData2":Lcom/veclink/healthy/database/entity/SleepData;
    .end local v31    # "startTime2":I
    .end local v32    # "sleepDuration2":I
    .restart local v38    # "startTime":I
    .restart local v39    # "sleepDuration":I
    :cond_7
    add-int v56, v56, v39

    .line 148
    move-object/from16 v0, v45

    iget v6, v0, Lcom/veclink/bracelet/bean/DeviceSleepData;->sleepState:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    .line 149
    .restart local v25    # "sleepState":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v12, v6}, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->createSportDataId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 150
    .restart local v10    # "id":Ljava/lang/String;
    new-instance v18, Lcom/veclink/healthy/database/entity/SleepData;

    const-string v42, "wait"

    move-object/from16 v33, v18

    move-object/from16 v34, v10

    move-object/from16 v35, v4

    move-object/from16 v36, v12

    move-object/from16 v37, v22

    move-object/from16 v40, v25

    move-object/from16 v41, v17

    invoke-direct/range {v33 .. v42}, Lcom/veclink/healthy/database/entity/SleepData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .restart local v18    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    move-object/from16 v0, v51

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 157
    .end local v10    # "id":Ljava/lang/String;
    .end local v18    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    .end local v22    # "dateTime":Ljava/lang/String;
    .end local v25    # "sleepState":Ljava/lang/String;
    .end local v38    # "startTime":I
    .end local v39    # "sleepDuration":I
    .end local v45    # "deviceSleepData":Lcom/veclink/bracelet/bean/DeviceSleepData;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v0, v51

    invoke-static {v6, v0}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->addOriginSleepdataList(Landroid/content/Context;Ljava/util/List;)V

    .line 158
    if-eqz v56, :cond_9

    .line 159
    const-string v6, "\u7761\u7720\u603b\u65f6\u957f\uff1a"

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/veclink/movnow_q2/util/StringUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 162
    new-instance v54, Lcom/veclink/healthy/task/UploadBraceletDataTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v0, v54

    invoke-direct {v0, v6}, Lcom/veclink/healthy/task/UploadBraceletDataTask;-><init>(Landroid/content/Context;)V

    .line 163
    .local v54, "task":Lcom/veclink/healthy/task/UploadBraceletDataTask;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v11, ""

    aput-object v11, v6, v7

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Lcom/veclink/healthy/task/UploadBraceletDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    .end local v54    # "task":Lcom/veclink/healthy/task/UploadBraceletDataTask;
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/veclink/healthy/task/SaveSyncDataRunnable;->handler:Landroid/os/Handler;

    const/16 v7, 0x3f2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    return-void
.end method

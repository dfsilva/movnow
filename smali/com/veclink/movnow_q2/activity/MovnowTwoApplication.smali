.class public Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
.super Landroid/app/Application;
.source "MovnowTwoApplication.java"

# interfaces
.implements Lcom/veclink/hw/bleservice/DeviceReponseObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_DEVICE_DONE:Ljava/lang/String; = "action_bind_device_done"

.field public static final ACTION_SYNC_PARAMS_DONE:Ljava/lang/String; = "action_sync_params_done"

.field public static final DEVICEFINEPHONE:I = 0x3e8

.field public static final DISCONNECTNOTIFY:I = 0x1212121

.field public static final DISCONNECTNOTIFYID:I = 0x3e7

.field public static final SITTING_REMIND_ID:I = 0x3

.field public static final SYNCDATANOTIFYID:I = 0x3e6

.field static final TAG:Ljava/lang/String; = "MovnowTwoApplication"

.field private static final TIME_INTERVAL:I = 0x5265c00

.field public static final WAKEUP_REMIND_ID:I = 0x2

.field public static final WATER_REMIND_ID:I = 0x1

.field private static activityManager:Lcom/veclink/movnow_q2/util/MyActivityManager;

.field public static application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

.field private static bleSyncParamsCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field private static bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

.field public static canDoTask:Z

.field public static deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

.field public static isConnected:Z

.field public static mContext:Landroid/content/Context;

.field private static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static notificationManager:Landroid/app/NotificationManager;

.field private static queryVerisonHandler:Landroid/os/Handler;

.field private static queryVersionCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field public static queryVersonCount:I

.field public static sitting_remind_startTime:J

.field private static syncParamHandler:Landroid/os/Handler;

.field public static syncParmasCount:I


# instance fields
.field private hasSyncSleepData:Z

.field private hasSyncStepData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->activityManager:Lcom/veclink/movnow_q2/util/MyActivityManager;

    .line 88
    sput v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParmasCount:I

    .line 89
    sput v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVersonCount:I

    .line 95
    new-instance v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$1;

    invoke-direct {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$1;-><init>()V

    sput-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParamHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParamHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 160
    new-instance v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$2;

    invoke-direct {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$2;-><init>()V

    sput-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVerisonHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVerisonHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVersionCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 645
    return-void
.end method

.method static synthetic access$000()Lcom/veclink/bracelet/bletask/BleSyncParamsTask;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/veclink/bracelet/bletask/BleSyncParamsTask;)Lcom/veclink/bracelet/bletask/BleSyncParamsTask;
    .locals 0
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    .prologue
    .line 69
    sput-object p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    return-object p0
.end method

.method public static cancelAllRemind()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "wakeup_remind_objects_file.wao"

    const-string v1, "wake_up_remind_action"

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelOneTypeRemind(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "water_remind_objects_file.wao"

    const-string v1, "dringk_water_remind_action"

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelOneTypeRemind(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method private static cancelFindPhoneNotify()V
    .locals 2

    .prologue
    .line 516
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 518
    :cond_0
    return-void
.end method

.method private static cancelKeptNotify()V
    .locals 2

    .prologue
    .line 511
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 513
    :cond_0
    return-void
.end method

.method public static cancelOneTypeRemind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 345
    sget-object v5, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v5, p0}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 346
    .local v4, "remindList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 347
    .local v0, "earliestWaterRemind":Lcom/veclink/movmow/allen/nurse/RemindObject;
    invoke-virtual {v0}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v1

    .line 348
    .local v1, "hour":I
    invoke-virtual {v0}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v3

    .line 349
    .local v3, "minute":I
    invoke-static {v1, v3, p1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelRemind(IILjava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v0    # "earliestWaterRemind":Lcom/veclink/movmow/allen/nurse/RemindObject;
    .end local v1    # "hour":I
    .end local v3    # "minute":I
    :cond_0
    return-void
.end method

.method public static cancelRemind(IILjava/lang/String;)V
    .locals 6
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-class v5, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-static {p0, p1, p2}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->createRemindRequesCode(IILjava/lang/String;)I

    move-result v3

    .line 327
    .local v3, "requestcode":I
    const-string v4, "dringk_water_remind_action"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    sget-object v4, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 334
    :goto_0
    sget-object v4, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 335
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 336
    return-void

    .line 329
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    const-string v4, "sitting_long_remind_action"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    sget-object v4, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-static {v4, v3, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    .line 332
    :cond_1
    sget-object v4, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v3, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0
.end method

.method public static createRemindRequesCode(IILjava/lang/String;)I
    .locals 3
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string v1, "sitting_long_remind_action"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    mul-int/lit8 v1, p0, 0x3c

    add-int v0, v1, p1

    .line 360
    .local v0, "remindId":I
    :goto_0
    return v0

    .line 358
    .end local v0    # "remindId":I
    :cond_0
    mul-int/lit8 v1, p0, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v2, p1, 0x3c

    add-int v0, v1, v2

    .restart local v0    # "remindId":I
    goto :goto_0
.end method

.method public static initImageLoader(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->enableLogging()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 390
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 391
    return-void
.end method

.method public static isApplicationBroughtToBackground(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 370
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 371
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 372
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 374
    .local v2, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 378
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public static playFindPhoneRing()V
    .locals 4

    .prologue
    .line 539
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    .local v0, "alert":Landroid/net/Uri;
    :goto_0
    return-void

    .line 541
    .end local v0    # "alert":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x4

    :try_start_0
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 542
    .restart local v0    # "alert":Landroid/net/Uri;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 543
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 545
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 546
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 547
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 548
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static playRing()V
    .locals 4

    .prologue
    .line 523
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    .local v0, "alert":Landroid/net/Uri;
    :goto_0
    return-void

    .line 525
    .end local v0    # "alert":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 526
    .restart local v0    # "alert":Landroid/net/Uri;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 527
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 529
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 530
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 531
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 532
    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static queryFirewareVersion()V
    .locals 3

    .prologue
    .line 237
    sget v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVersonCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVersonCount:I

    .line 238
    new-instance v0, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->queryVersionCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v0, v1, v2}, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 239
    .local v0, "task":Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;
    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleQueryFirmareVersionTask;->work()V

    .line 240
    return-void
.end method

.method public static sendNotification(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "iconId"    # I
    .param p1, "notifyId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "content"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    .line 486
    sget-object v5, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    sput-object v5, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->notificationManager:Landroid/app/NotificationManager;

    .line 487
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v4, "notificationIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    sget-object v5, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-class v6, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 490
    const/high16 v5, 0x10200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 491
    sget-object v5, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 492
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v5, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 499
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 500
    .local v3, "notification":Landroid/app/Notification;
    const/4 v5, 0x2

    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 501
    const/16 v5, 0x20

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 502
    sget-object v5, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v3    # "notification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v2

    .line 504
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "uri"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uriString----e---:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAllTypeOrNextRemindAlarm()V
    .locals 1

    .prologue
    .line 290
    const-string v0, "wakeup_remind_objects_file.wao"

    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setNextRemind(Ljava/lang/String;)V

    .line 291
    const-string v0, "water_remind_objects_file.wao"

    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setNextRemind(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public static setNextRemind(Ljava/lang/String;)V
    .locals 13
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 295
    sget-object v11, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v11, p0}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 296
    .local v10, "waterRemindList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 297
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 298
    .local v2, "earliestWaterRemind":Lcom/veclink/movmow/allen/nurse/RemindObject;
    const-string v11, "remindobject"

    invoke-virtual {v2}, Lcom/veclink/movmow/allen/nurse/RemindObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/veclink/movnow_q2/util/DebugUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v2}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v3

    .line 300
    .local v3, "hour":I
    invoke-virtual {v2}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v5

    .line 301
    .local v5, "minute":I
    mul-int/lit8 v11, v3, 0x3c

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit8 v12, v5, 0x3c

    add-int v9, v11, v12

    .line 302
    .local v9, "remindTime":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 303
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 304
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 305
    .local v6, "nowHour":I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 306
    .local v7, "nowMinute":I
    mul-int/lit8 v11, v6, 0x3c

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit8 v12, v7, 0x3c

    add-int v8, v11, v12

    .line 307
    .local v8, "nowTime":I
    if-ge v8, v9, :cond_0

    .line 308
    const/4 v11, 0x7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 309
    .local v1, "dayOfWeek":I
    const-string v11, "wakeup_remind_objects_file.wao"

    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 310
    invoke-virtual {v2}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getRepeateArray()[Z

    move-result-object v11

    aget-boolean v11, v11, v1

    if-eqz v11, :cond_0

    .line 311
    const-string v11, "wake_up_remind_action"

    invoke-static {v2, v11}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setRemindAlarm(Lcom/veclink/movmow/allen/nurse/RemindObject;Ljava/lang/String;)V

    .line 320
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dayOfWeek":I
    .end local v2    # "earliestWaterRemind":Lcom/veclink/movmow/allen/nurse/RemindObject;
    .end local v3    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "nowHour":I
    .end local v7    # "nowMinute":I
    .end local v8    # "nowTime":I
    .end local v9    # "remindTime":I
    :cond_1
    :goto_0
    return-void

    .line 315
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "dayOfWeek":I
    .restart local v2    # "earliestWaterRemind":Lcom/veclink/movmow/allen/nurse/RemindObject;
    .restart local v3    # "hour":I
    .restart local v5    # "minute":I
    .restart local v6    # "nowHour":I
    .restart local v7    # "nowMinute":I
    .restart local v8    # "nowTime":I
    .restart local v9    # "remindTime":I
    :cond_2
    const-string v11, "dringk_water_remind_action"

    invoke-static {v2, v11}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setRemindAlarm(Lcom/veclink/movmow/allen/nurse/RemindObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setRemindAlarm(Lcom/veclink/movmow/allen/nurse/RemindObject;Ljava/lang/String;)V
    .locals 14
    .param p0, "remindObject"    # Lcom/veclink/movmow/allen/nurse/RemindObject;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 244
    .local v7, "c":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v8

    .line 245
    .local v8, "hour":I
    invoke-virtual {p0}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v10

    .line 246
    .local v10, "minute":I
    mul-int/lit8 v1, v8, 0x3c

    add-int/2addr v1, v10

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    .line 247
    .local v4, "sitting_remind_repeat_time":J
    const-string v1, "sitting_long_remind_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->sitting_remind_startTime:J

    .line 249
    sget-wide v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->sitting_remind_startTime:J

    add-long/2addr v1, v4

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 262
    :goto_0
    new-instance v9, Landroid/content/Intent;

    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-class v2, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "RemindObject"

    invoke-virtual {v9, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 264
    invoke-virtual {v9, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/4 v6, 0x0

    .line 266
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-static {v8, v10, p1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->createRemindRequesCode(IILjava/lang/String;)I

    move-result v13

    .line 267
    .local v13, "requestcode":I
    const-string v1, "dringk_water_remind_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v13, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 278
    :goto_1
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 279
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v1, "dringk_water_remind_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 287
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v4    # "sitting_remind_repeat_time":J
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "requestcode":I
    :cond_0
    :goto_2
    return-void

    .line 252
    .restart local v4    # "sitting_remind_repeat_time":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 253
    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int v11, v1, v2

    .line 254
    .local v11, "nowTime":I
    mul-int/lit8 v1, v8, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v2, v10, 0x3c

    add-int v12, v1, v2

    .line 255
    .local v12, "remindTime":I
    if-lt v12, v11, :cond_0

    .line 258
    const/16 v1, 0xb

    invoke-virtual {v7, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 259
    const/16 v1, 0xc

    invoke-virtual {v7, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 260
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 270
    .end local v11    # "nowTime":I
    .end local v12    # "remindTime":I
    .restart local v6    # "pi":Landroid/app/PendingIntent;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v13    # "requestcode":I
    :cond_2
    const-string v1, "sitting_long_remind_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v13, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto :goto_1

    .line 276
    :cond_3
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v13, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto :goto_1

    .line 281
    .restart local v0    # "am":Landroid/app/AlarmManager;
    :cond_4
    const-string v1, "wake_up_remind_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 282
    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 283
    :cond_5
    const-string v1, "sitting_long_remind_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method public static stopPlayRing()V
    .locals 1

    .prologue
    .line 555
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelKeptNotify()V

    .line 556
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelFindPhoneNotify()V

    .line 557
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 558
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 559
    const/4 v0, 0x0

    sput-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 561
    :cond_0
    return-void
.end method

.method public static syncParams()V
    .locals 20

    .prologue
    .line 217
    sget v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParmasCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParmasCount:I

    .line 218
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "pre_MyTarget"

    const-string v19, "7000"

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 219
    .local v4, "targetStep":I
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "pre_WearLocation"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 220
    .local v5, "wearLocation":I
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "pre_SportType"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 221
    .local v6, "sport_mode":I
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "pre_Sex"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 222
    .local v7, "sex":I
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "personal_year"

    const/16 v19, 0x7b2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 223
    .local v16, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 224
    .local v15, "nowYear":I
    sub-int v8, v15, v16

    .line 225
    .local v8, "age":I
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "personal_height"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 226
    .local v10, "height":F
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "personal_weight"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 227
    .local v9, "weight":F
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "pre_DistanceType"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 228
    .local v11, "distanceUnit":I
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f070000

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 229
    .local v13, "defaultKeptOnoff":Z
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    const-string v18, "personal_kept_set"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 230
    .local v14, "keptOnOffblean":Z
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_0

    const/4 v12, 0x1

    .line 231
    .local v12, "keptOnOff":I
    :goto_0
    new-instance v3, Lcom/veclink/bracelet/bean/BleUserInfoBean;

    invoke-direct/range {v3 .. v12}, Lcom/veclink/bracelet/bean/BleUserInfoBean;-><init>(IIIIIFFII)V

    .line 232
    .local v3, "bean":Lcom/veclink/bracelet/bean/BleUserInfoBean;
    new-instance v17, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    sget-object v18, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    sget-object v19, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;Lcom/veclink/bracelet/bean/BleUserInfoBean;)V

    sput-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    .line 233
    sget-object v17, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->bleSyncParamsTask:Lcom/veclink/bracelet/bletask/BleSyncParamsTask;

    invoke-virtual/range {v17 .. v17}, Lcom/veclink/bracelet/bletask/BleSyncParamsTask;->work()V

    .line 234
    return-void

    .line 230
    .end local v3    # "bean":Lcom/veclink/bracelet/bean/BleUserInfoBean;
    .end local v12    # "keptOnOff":I
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deviceConnected()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    sput-boolean v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->isConnected:Z

    .line 437
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->stopPlayRing()V

    .line 438
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->cancelKeptNotify()V

    .line 439
    return-void
.end method

.method public deviceDisConnect()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 423
    sput-boolean v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->isConnected:Z

    .line 424
    sput-boolean v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->canDoTask:Z

    .line 425
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v2, "personal_kept_set"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 426
    .local v0, "isOpenKept":Z
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 427
    sget-object v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParamHandler:Landroid/os/Handler;

    const v2, 0x1212121

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    :cond_0
    return-void
.end method

.method public deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 466
    return-void
.end method

.method public deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 448
    return-void
.end method

.method public deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 457
    return-void
.end method

.method public deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 473
    const/4 v0, 0x0

    sput v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParmasCount:I

    .line 474
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->syncParamHandler:Landroid/os/Handler;

    new-instance v1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$3;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$3;-><init>(Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    return-void
.end method

.method public getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->activityManager:Lcom/veclink/movnow_q2/util/MyActivityManager;

    return-object v0
.end method

.method public isHasSyncSleepData()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->hasSyncSleepData:Z

    return v0
.end method

.method public isHasSyncStepData()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->hasSyncStepData:Z

    return v0
.end method

.method public isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 572
    const/4 v2, 0x0

    .line 574
    .local v2, "isRunning":Z
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 576
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 580
    .local v3, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 582
    const/4 v4, 0x0

    .line 600
    :goto_0
    return v4

    .line 586
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 588
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 590
    const/4 v2, 0x1

    .line 598
    :cond_1
    const-string v4, "MovnowTwoApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service is running?=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 600
    goto :goto_0

    .line 586
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 198
    sput-object p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    .line 199
    sput-object p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 200
    invoke-static {}, Lcom/veclink/movnow_q2/util/MyActivityManager;->getScreenManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v0

    sput-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->activityManager:Lcom/veclink/movnow_q2/util/MyActivityManager;

    .line 201
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/devicetype/DeviceProductFactory;->createDeviceProduct(Ljava/lang/String;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    move-result-object v0

    sput-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .line 202
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v0

    new-instance v1, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    invoke-direct {v1}, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->bindService(Landroid/app/Application;Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;)V

    .line 204
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->registerObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 205
    sget-object v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    iget v0, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->canShowKeptView:I

    if-nez v0, :cond_1

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->setAutoReConnect(Z)V

    .line 210
    :goto_0
    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setAllTypeOrNextRemindAlarm()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->initImageLoader(Landroid/content/Context;)V

    .line 213
    invoke-static {}, Lcom/veclink/movnow_q2/util/DebugUtil;->closeLog()V

    .line 214
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->setAutoReConnect(Z)V

    goto :goto_0
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;

    .prologue
    .line 634
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;->getSleeps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    new-instance v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;-><init>(Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;->getSleeps()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-class v1, Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;

    .prologue
    .line 624
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->getSports()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    new-instance v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;-><init>(Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;->getSports()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication$SaveNetSportOrSleepData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-class v1, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setActivityManager(Lcom/veclink/movnow_q2/util/MyActivityManager;)V
    .locals 0
    .param p1, "activityManager"    # Lcom/veclink/movnow_q2/util/MyActivityManager;

    .prologue
    .line 414
    sput-object p1, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->activityManager:Lcom/veclink/movnow_q2/util/MyActivityManager;

    .line 415
    return-void
.end method

.method public setHasSyncSleepData(Z)V
    .locals 0
    .param p1, "hasSyncSleepData"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->hasSyncSleepData:Z

    .line 407
    return-void
.end method

.method public setHasSyncStepData(Z)V
    .locals 0
    .param p1, "hasSyncStepData"    # Z

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->hasSyncStepData:Z

    .line 399
    return-void
.end method

.method public syncSleepData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSleepData startTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSleepData endTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 618
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-class v2, Lcom/veclink/healthy/business/http/pojo/GetSleepDataResponse;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 619
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .local v0, "session":Lcom/veclink/healthy/business/http/session/HealthyGetSleepDataSession;
    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 621
    return-void
.end method

.method public syncSportData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSportData startTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSportData endTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 609
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-class v2, Lcom/veclink/healthy/business/http/pojo/GetSportDataResponse;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 610
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyGetSportDataSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/veclink/healthy/business/http/session/HealthyGetSportDataSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .local v0, "session":Lcom/veclink/healthy/business/http/session/HealthyGetSportDataSession;
    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 612
    return-void
.end method

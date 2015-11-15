.class public Lcom/veclink/movnow_q2/reveiver/RemindReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemindReceiver.java"


# static fields
.field public static final DRINGK_WATER_REMIND_ACTION:Ljava/lang/String; = "dringk_water_remind_action"

.field public static final SITTING_LONG_REMIND_ACTION:Ljava/lang/String; = "sitting_long_remind_action"

.field public static final WAKE_UP_REMIND_ACTION:Ljava/lang/String; = "wake_up_remind_action"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isInSittingRemindTime()Z
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 96
    iget-object v10, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const-string v12, "key_sitting_remind_timemind_time_begin_hour"

    const/16 v13, 0x9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 97
    .local v6, "timeBeginHour":I
    iget-object v10, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const-string v12, "key_sitting_remind_time_begin_minute"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 98
    .local v7, "timeBeginMinute":I
    iget-object v10, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const-string v12, "key_sitting_remind_time_end_hour"

    const/16 v13, 0x15

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 99
    .local v8, "timeEndHour":I
    iget-object v10, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const-string v12, "key_sitting_remind_time_end_minute"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 101
    .local v9, "timeEndMinute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 103
    .local v3, "nowTimeHour":I
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 104
    .local v4, "nowTimeMinute":I
    mul-int/lit8 v10, v3, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v12, v4, 0x3c

    add-int v2, v10, v12

    .line 105
    .local v2, "nowTime":I
    mul-int/lit8 v10, v6, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v12, v7, 0x3c

    add-int v5, v10, v12

    .line 106
    .local v5, "startTime":I
    mul-int/lit8 v10, v8, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v12, v9, 0x3c

    add-int v1, v10, v12

    .line 107
    .local v1, "endTime":I
    if-gt v5, v2, :cond_0

    if-gt v2, v1, :cond_0

    .line 108
    const/4 v10, 0x1

    .line 110
    :goto_0
    return v10

    :cond_0
    move v10, v11

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v6, 0x7f0200a4

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    const-string v3, ""

    .line 32
    .local v3, "title":Ljava/lang/String;
    const-string v1, ""

    .line 33
    .local v1, "content":Ljava/lang/String;
    iput-object p1, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    .line 34
    const-string v4, "dringk_water_remind_action"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    iget-object v4, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00ec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    iget-object v4, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0c014a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-object v4, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const-string v5, "water_remind_objects_file.wao"

    invoke-static {v4, v5}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 38
    .local v2, "datalist":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4, v3, v1}, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->sendNotification(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    const-string v4, "water_remind_objects_file.wao"

    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setNextRemind(Ljava/lang/String;)V

    .line 66
    .end local v2    # "datalist":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v4, "wake_up_remind_action"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    iget-object v4, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0148

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    iget-object v4, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const-string v5, "wakeup_remind_objects_file.wao"

    invoke-static {v4, v5}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 44
    .restart local v2    # "datalist":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v6, v4, v3, v1}, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->sendNotification(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 45
    :cond_2
    const-string v4, "wakeup_remind_objects_file.wao"

    invoke-static {v4}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setNextRemind(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v2    # "datalist":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    :cond_3
    iget-object v4, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    iget-object v4, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0149

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v4, "RemindReceiver"

    const-string v5, "\u4e45\u5750\u5b9a\u65f6\u63d0\u9192"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendNotification(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "iconId"    # I
    .param p2, "notifyId"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "content"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 71
    iget-object v6, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 72
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, "notificationIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v6, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    const-class v7, Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    const/high16 v6, 0x10200000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    iget-object v6, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 78
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/veclink/movnow_q2/reveiver/RemindReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 86
    .local v3, "notification":Landroid/app/Notification;
    const/4 v6, 0x1

    iput v6, v3, Landroid/app/Notification;->defaults:I

    .line 87
    invoke-virtual {v5, p2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v3    # "notification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "uri"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uriString----e---:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

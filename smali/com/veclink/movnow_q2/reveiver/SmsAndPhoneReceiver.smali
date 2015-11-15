.class public Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsAndPhoneReceiver.java"


# static fields
.field public static final DIAL_NUMBER:I = 0x7d0

.field public static isCALL_STATE_IDLE:Z

.field public static isCALL_STATE_OFFHOOK:Z

.field public static telePhoneNumber:Ljava/lang/String;


# instance fields
.field sendMsgHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 192
    new-instance v0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$3;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$3;-><init>(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->sendMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->closePhone()V

    return-void
.end method

.method private declared-synchronized closePhone()V
    .locals 2

    .prologue
    .line 247
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_OFFHOOK:Z

    .line 248
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->getTelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 222
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 225
    .local v7, "displayName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 226
    .local v8, "transfer":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 228
    const-string v0, "SmsAndPhoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomingNumbername:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    move-object v8, p2

    .line 237
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    return-object v8

    .line 235
    :cond_1
    move-object v8, v7

    goto :goto_0
.end method


# virtual methods
.method public getTelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 8

    .prologue
    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    sget-object v6, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 263
    .local v5, "telMgr":Landroid/telephony/TelephonyManager;
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 264
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/telephony/TelephonyManager;>;"
    const/4 v3, 0x0

    .line 266
    .local v3, "getITelephonyMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v7, "getITelephony"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 267
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :goto_0
    const/4 v6, 0x0

    :try_start_1
    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 283
    :goto_1
    return-object v4

    .line 268
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 276
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 278
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 280
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 51
    .local v11, "action":Ljava/lang/String;
    new-instance v5, Lcom/veclink/bracelet/bletask/BleCallBack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->sendMsgHandler:Landroid/os/Handler;

    invoke-direct {v5, v4}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    .line 52
    .local v5, "sendMsgCallBack":Lcom/veclink/bracelet/bletask/BleCallBack;
    const-string v4, "SmsAndPhoneReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/veclink/hw/bleservice/VLBleService;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v22, "service":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const-string v4, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/TelephonyManager;

    .line 58
    .local v23, "tm":Landroid/telephony/TelephonyManager;
    new-instance v4, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;-><init>(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    const/16 v6, 0x20

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 191
    .end local v23    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v9, "SMSAddress":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v10, "SMSContent":Ljava/lang/StringBuffer;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 111
    .local v13, "bundle":Landroid/os/Bundle;
    if-eqz v13, :cond_3

    .line 112
    const-string v4, "pdus"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v20, v4

    check-cast v20, [Ljava/lang/Object;

    .line 113
    .local v20, "pdusObjects":[Ljava/lang/Object;
    move-object/from16 v0, v20

    array-length v4, v0

    new-array v0, v4, [Landroid/telephony/SmsMessage;

    move-object/from16 v19, v0

    .line 114
    .local v19, "messages":[Landroid/telephony/SmsMessage;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v20

    array-length v4, v0

    if-ge v15, v4, :cond_2

    .line 115
    aget-object v4, v20, v15

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v19, v15

    .line 114
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 118
    :cond_2
    move-object/from16 v12, v19

    .local v12, "arr$":[Landroid/telephony/SmsMessage;
    array-length v0, v12

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v18, v12, v16

    .line 119
    .local v18, "message":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 123
    .end local v12    # "arr$":[Landroid/telephony/SmsMessage;
    .end local v15    # "i":I
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "message":Landroid/telephony/SmsMessage;
    .end local v19    # "messages":[Landroid/telephony/SmsMessage;
    .end local v20    # "pdusObjects":[Ljava/lang/Object;
    :cond_3
    const-string v4, "SmsAndPhoneReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMSAddress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v4, "SmsAndPhoneReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMSContent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 126
    .local v21, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, "displayName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 128
    .local v24, "transfer":Ljava/lang/String;
    const-string v4, "SmsAndPhoneReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transfer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v4, "personal_remind_sms"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    new-instance v3, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;

    const/4 v6, 0x2

    invoke-static/range {v21 .. v21}, Lcom/veclink/hw/bleservice/util/Helper;->getNeedSendNumberByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;B[BI)V

    .line 134
    .local v3, "task":Lcom/veclink/bracelet/bletask/BleTask;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/veclink/bracelet/bletask/BleTask;->work()V

    goto/16 :goto_0

    .line 136
    .end local v3    # "task":Lcom/veclink/bracelet/bletask/BleTask;
    .end local v9    # "SMSAddress":Ljava/lang/StringBuffer;
    .end local v10    # "SMSContent":Ljava/lang/StringBuffer;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v14    # "displayName":Ljava/lang/String;
    .end local v21    # "phoneNumber":Ljava/lang/String;
    .end local v24    # "transfer":Ljava/lang/String;
    :cond_4
    const-string v4, "ACTION_DEVICE_FIND_PHONE"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 137
    sget-object v4, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->playFindPhoneRing()V

    .line 138
    sget-object v4, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    const v4, 0x7f0200a4

    const/16 v6, 0x3e8

    const/high16 v7, 0x7f0c0000

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0c01ae

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->sendNotification(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 140
    :cond_5
    const-string v4, "ACTION_HANDOFF_COMINGCALL"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->closePhone()V

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string v4, "ACTION_DIAL_FAMILY_NUMBERS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    new-instance v4, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;-><init>(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$2;->start()V

    goto/16 :goto_0
.end method

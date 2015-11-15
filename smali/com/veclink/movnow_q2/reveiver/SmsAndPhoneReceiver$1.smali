.class Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "SmsAndPhoneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sendMsgCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;->this$0:Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;

    iput-object p2, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;->val$sendMsgCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 61
    packed-switch p1, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    sput-boolean v5, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_IDLE:Z

    .line 64
    sput-boolean v5, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_OFFHOOK:Z

    .line 65
    const-string v1, "SmsAndPhoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incomingNumber:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;->val$context:Landroid/content/Context;

    const-string v2, "personal_remind_mobile"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->telePhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->telePhoneNumber:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;->this$0:Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;

    iget-object v2, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;->val$context:Landroid/content/Context;

    sget-object v4, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->telePhoneNumber:Ljava/lang/String;

    # invokes: Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v4}, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->access$000(Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "displayName":Ljava/lang/String;
    invoke-static {v7}, Lcom/veclink/movnow_q2/util/PinYinUtil;->getPingYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "pinyinString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 78
    .local v6, "pinyinArray":[B
    new-instance v0, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;

    iget-object v1, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver$1;->val$sendMsgCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    sget-object v4, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->telePhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/Helper;->getNeedSendNumberByteArray(Ljava/lang/String;)[B

    move-result-object v4

    sget-object v5, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->telePhoneNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/veclink/bracelet/bletask/BleSendShortMsgRemindTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;B[BI[B)V

    .line 80
    .local v0, "task":Lcom/veclink/bracelet/bletask/BleTask;
    invoke-virtual {v0}, Lcom/veclink/bracelet/bletask/BleTask;->work()V

    goto :goto_0

    .line 85
    .end local v0    # "task":Lcom/veclink/bracelet/bletask/BleTask;
    .end local v6    # "pinyinArray":[B
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "pinyinString":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "TelephonyManager.CALL_STATE_IDLE \u6302\u65ad"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sput-object v4, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->telePhoneNumber:Ljava/lang/String;

    .line 87
    sput-boolean v5, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_OFFHOOK:Z

    .line 88
    sput-boolean v3, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_IDLE:Z

    goto :goto_0

    .line 92
    :pswitch_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "TelephonyManager.CALL_STATE_OFFHOOK \u63a5\u542c"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sput-object v4, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->telePhoneNumber:Ljava/lang/String;

    .line 94
    sput-boolean v5, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_IDLE:Z

    .line 95
    sput-boolean v3, Lcom/veclink/movnow_q2/reveiver/SmsAndPhoneReceiver;->isCALL_STATE_OFFHOOK:Z

    goto/16 :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
